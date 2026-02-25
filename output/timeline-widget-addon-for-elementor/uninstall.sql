-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('twae_initial_save_version', 'twae-install-date', 'twae-alreadyRated', 'twae-installDate', 'twae_marketing_dismissed', 'twae_tec_notice_dismissed', 'twae_hide_migration_notice', 'twae-free-v', 'twae-type', 'cpfm_opt_in_choice_cool-timeline', 'twae-v', 'twae-migration-status');
DELETE FROM wp_options WHERE option_name LIKE '%_hide_migration_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_data', 'twae_style_migration', 'twae_exists');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_data', 'twae_style_migration', 'twae_exists');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_data', 'twae_style_migration', 'twae_exists');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_data', 'twae_style_migration', 'twae_exists');

