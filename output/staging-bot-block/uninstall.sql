-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('staging_bot_block_options', 'staging_bot_block_show_activation_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bb_redirect_enabled', 'bb_redirect_choice', 'bb_redirect_url', 'bb_redirect_type', 'bb_redirect_enable_warning_banner');
DELETE FROM wp_usermeta WHERE meta_key IN ('bb_redirect_enabled', 'bb_redirect_choice', 'bb_redirect_url', 'bb_redirect_type', 'bb_redirect_enable_warning_banner');
DELETE FROM wp_termmeta WHERE meta_key IN ('bb_redirect_enabled', 'bb_redirect_choice', 'bb_redirect_url', 'bb_redirect_type', 'bb_redirect_enable_warning_banner');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bb_redirect_enabled', 'bb_redirect_choice', 'bb_redirect_url', 'bb_redirect_type', 'bb_redirect_enable_warning_banner');

