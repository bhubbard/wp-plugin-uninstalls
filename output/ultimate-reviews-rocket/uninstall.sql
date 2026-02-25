-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('urr_activation_redirect', 'ultimate_reviews_rocket_setting_options', 'ultimate_reviews_rocket_enable_options', 'ultimate_reviews_rocket_social_media_options', 'ultimate_reviews_rocket_options', 'new_admin_email', 'urr_social_options', 'urr-admin-notice-activation');
DELETE FROM wp_options WHERE option_name LIKE '%_options';

