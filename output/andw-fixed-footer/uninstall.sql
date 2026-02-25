-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('andwff_migration_done', 'andwff_options', 'andw_fixed_footer_options');

