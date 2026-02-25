-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lockr_default_deleted', 'lockr_options', 'lockr_partner', 'lockr_cert', 'lockr_region', 'lockr_encrypt_posts', 'lockr_hash_pass', 'lockr_prod_migrate', 'give_settings', 'staging_environment', 'lockr_db_version', 'lockr_prod_abstract_migrated', 'lockr_dev_abstract_migrated');
DELETE FROM wp_options WHERE option_name LIKE '%_abstract_migrated';

