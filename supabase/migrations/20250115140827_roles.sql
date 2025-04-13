-- Ensure the role exists
DO $$ BEGIN
    -- Create the role again
    CREATE ROLE cnfi_analyst WITH LOGIN PASSWORD 'WN2ESPO57prVLJVvjpZJN';
EXCEPTION
    WHEN duplicate_object THEN NULL;
END $$;

-- Ensure future tables in public are not accessible
ALTER DEFAULT PRIVILEGES FOR ROLE postgres
REVOKE SELECT ON TABLES FROM cnfi_analyst;
REVOKE CREATE ON SCHEMA public FROM PUBLIC;
REVOKE CREATE ON SCHEMA public FROM PUBLIC;

GRANT CONNECT ON DATABASE postgres TO cnfi_analyst;

GRANT USAGE ON SCHEMA inventory_archive TO cnfi_analyst;
GRANT SELECT ON ALL TABLES IN SCHEMA inventory_archive TO cnfi_analyst;

GRANT USAGE ON SCHEMA lookup TO cnfi_analyst;
GRANT SELECT ON ALL TABLES IN SCHEMA lookup TO cnfi_analyst;



