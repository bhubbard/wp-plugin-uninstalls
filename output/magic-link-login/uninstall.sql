-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('amc_spark_magic_login_key', 'amc_spark_magic_login_key_issued_at');
DELETE FROM wp_usermeta WHERE meta_key IN ('amc_spark_magic_login_key', 'amc_spark_magic_login_key_issued_at');
DELETE FROM wp_termmeta WHERE meta_key IN ('amc_spark_magic_login_key', 'amc_spark_magic_login_key_issued_at');
DELETE FROM wp_commentmeta WHERE meta_key IN ('amc_spark_magic_login_key', 'amc_spark_magic_login_key_issued_at');

