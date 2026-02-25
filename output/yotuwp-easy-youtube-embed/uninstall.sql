-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yotuwp_pro_install_date', 'yotuwp_tracking_notice', 'yotuwp_install_date', 'yotuwp_allow_tracking', 'yotuwp_tracking_last_send', 'yotu-api', 'yotuwp_rating_date', 'yotu-settings', 'yotu-player', 'yotu-styling', 'yotu-effects', 'yotu-cache', 'yotuwp_activation_redirect', 'yotuwp_presets');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('yotuwp_scgen_ignore_notice', 'yotuwp_rating_ignore_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('yotuwp_scgen_ignore_notice', 'yotuwp_rating_ignore_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('yotuwp_scgen_ignore_notice', 'yotuwp_rating_ignore_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('yotuwp_scgen_ignore_notice', 'yotuwp_rating_ignore_notice');

