-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ws_plugin__s2member_notices', 'ws_plugin__s2member_cache', 'ws_plugin__s2member_activated_version', 'ws_plugin__s2member_activated_mms_version', 'ws_plugin__s2member_activated_levels', 'ws_plugin__s2member_options', 'ws_plugin__s2member_configured', 'registration', 'add_new_users');
DELETE FROM wp_options WHERE option_name LIKE 's2m_ipr_%';
DELETE FROM wp_options WHERE option_name LIKE 's2m_%';
DELETE FROM wp_options WHERE option_name LIKE 's2m_rsf_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('s2_notice_dismissed_2300808', 's2member_ccaps_req', 's2member_ms_signup_meta', 'first_name', 'last_name', 's2member_originating_blog', 's2member_force_ssl');
DELETE FROM wp_usermeta WHERE meta_key IN ('s2_notice_dismissed_2300808', 's2member_ccaps_req', 's2member_ms_signup_meta', 'first_name', 'last_name', 's2member_originating_blog', 's2member_force_ssl');
DELETE FROM wp_termmeta WHERE meta_key IN ('s2_notice_dismissed_2300808', 's2member_ccaps_req', 's2member_ms_signup_meta', 'first_name', 'last_name', 's2member_originating_blog', 's2member_force_ssl');
DELETE FROM wp_commentmeta WHERE meta_key IN ('s2_notice_dismissed_2300808', 's2member_ccaps_req', 's2member_ms_signup_meta', 'first_name', 'last_name', 's2member_originating_blog', 's2member_force_ssl');

