-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gutenkit_version', 'gutenkit_installed_time', 'gutenkit_do_activation_redirect', 'gutenkit_onboard_status', 'active_sitewide_plugins', 'gutenkit_blocks_list', 'gutenkit_favorite_templates', 'gutenkit_modules_list', 'gutenkit_onboard_email', 'gutenkit_settings_list', 'gutenkitBreakpoints', '__gutenkit_oppai__', '__gutenkit_license_key__', 'enable_smooth_scroll', 'smooth_scroll_duration', 'smooth_scroll_lerp', 'smooth_scroll_prevent_type', 'smooth_scroll_exclude', 'smooth_scroll_include');
DELETE FROM wp_options WHERE option_name LIKE '%_list';
DELETE FROM wp_options WHERE option_name LIKE '%__banner_data';
DELETE FROM wp_options WHERE option_name LIKE '%__banner_last_check';
DELETE FROM wp_options WHERE option_name LIKE '%_never_show';
DELETE FROM wp_options WHERE option_name LIKE '%_ask_me_later';
DELETE FROM wp_options WHERE option_name LIKE '%_install_date';
DELETE FROM wp_options WHERE option_name LIKE '%_first_action_Date';
DELETE FROM wp_options WHERE option_name LIKE '%_first_action';
DELETE FROM wp_options WHERE option_name LIKE '%_version';
DELETE FROM wp_options WHERE option_name LIKE '%__stories_data';
DELETE FROM wp_options WHERE option_name LIKE '%__stories_last_check';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('globalClassManagerStyle', 'postBodyCss', 'origin_from');
DELETE FROM wp_usermeta WHERE meta_key IN ('globalClassManagerStyle', 'postBodyCss', 'origin_from');
DELETE FROM wp_termmeta WHERE meta_key IN ('globalClassManagerStyle', 'postBodyCss', 'origin_from');
DELETE FROM wp_commentmeta WHERE meta_key IN ('globalClassManagerStyle', 'postBodyCss', 'origin_from');

