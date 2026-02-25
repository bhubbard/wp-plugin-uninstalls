-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rewrite_rules', 'awesome-studio-api-key', 'nav_menu_last_edit', 'opt-winlive-id', 'monoframe_facebook_app_id', 'monoframe_facebook_app_secret', 'monoframe_twitter_app_key', 'monoframe_twitter_app_secret', 'monoframe_google_app_id', 'monoframe_google_app_secret', 'monoframe_redirect_after_login', 'awesome-sync', 'awesome-sync-keys', 'sidebars_widgets', 'enable_xmlrpc', 'enable_app', 'awesome_studio_types');
DELETE FROM wp_options WHERE option_name LIKE '%_options';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('default_post_type', 'default_taxonomy', 'default_pages', 'default_modules', 'default_triggers', '_module_thumb', '_wp_page_template', 'develop_for_awesomeui', 'aw2_gsuite_id', 'first_name', 'last_name', 'aw2_gogle_plus_link', 'aw2_gsuite_profile_picture', 'aw2_gsuite_gender', 'aw2_is_google_authenticator_enabled', 'aw2_google_authenticator_secret_key', 'aw2_google_authenticator_prev_login_time', 'aw2_google_authenticator_time_window', '_params', 'device_token', '_rcm_revision_meta', '_wp_attachment_image_alt', 'slug', '_thumbnail_id', '_product_image_gallery', '_order_currency', '_payment_method', '_payment_method_title', '_installation');
DELETE FROM wp_usermeta WHERE meta_key IN ('default_post_type', 'default_taxonomy', 'default_pages', 'default_modules', 'default_triggers', '_module_thumb', '_wp_page_template', 'develop_for_awesomeui', 'aw2_gsuite_id', 'first_name', 'last_name', 'aw2_gogle_plus_link', 'aw2_gsuite_profile_picture', 'aw2_gsuite_gender', 'aw2_is_google_authenticator_enabled', 'aw2_google_authenticator_secret_key', 'aw2_google_authenticator_prev_login_time', 'aw2_google_authenticator_time_window', '_params', 'device_token', '_rcm_revision_meta', '_wp_attachment_image_alt', 'slug', '_thumbnail_id', '_product_image_gallery', '_order_currency', '_payment_method', '_payment_method_title', '_installation');
DELETE FROM wp_termmeta WHERE meta_key IN ('default_post_type', 'default_taxonomy', 'default_pages', 'default_modules', 'default_triggers', '_module_thumb', '_wp_page_template', 'develop_for_awesomeui', 'aw2_gsuite_id', 'first_name', 'last_name', 'aw2_gogle_plus_link', 'aw2_gsuite_profile_picture', 'aw2_gsuite_gender', 'aw2_is_google_authenticator_enabled', 'aw2_google_authenticator_secret_key', 'aw2_google_authenticator_prev_login_time', 'aw2_google_authenticator_time_window', '_params', 'device_token', '_rcm_revision_meta', '_wp_attachment_image_alt', 'slug', '_thumbnail_id', '_product_image_gallery', '_order_currency', '_payment_method', '_payment_method_title', '_installation');
DELETE FROM wp_commentmeta WHERE meta_key IN ('default_post_type', 'default_taxonomy', 'default_pages', 'default_modules', 'default_triggers', '_module_thumb', '_wp_page_template', 'develop_for_awesomeui', 'aw2_gsuite_id', 'first_name', 'last_name', 'aw2_gogle_plus_link', 'aw2_gsuite_profile_picture', 'aw2_gsuite_gender', 'aw2_is_google_authenticator_enabled', 'aw2_google_authenticator_secret_key', 'aw2_google_authenticator_prev_login_time', 'aw2_google_authenticator_time_window', '_params', 'device_token', '_rcm_revision_meta', '_wp_attachment_image_alt', 'slug', '_thumbnail_id', '_product_image_gallery', '_order_currency', '_payment_method', '_payment_method_title', '_installation');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_latitude';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_latitude';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_latitude';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_latitude';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_longitude';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_longitude';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_longitude';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_longitude';

