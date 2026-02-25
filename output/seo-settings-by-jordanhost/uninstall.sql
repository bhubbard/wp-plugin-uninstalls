-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('seo_settings_by_jordanhost_options', 'seo_settings_by_jordanhost_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_seo_settings_by_jordanhost_title', '_seo_settings_by_jordanhost_description', '_seo_settings_by_jordanhost_keywords', '_seo_settings_by_jordanhost_noindex');
DELETE FROM wp_usermeta WHERE meta_key IN ('_seo_settings_by_jordanhost_title', '_seo_settings_by_jordanhost_description', '_seo_settings_by_jordanhost_keywords', '_seo_settings_by_jordanhost_noindex');
DELETE FROM wp_termmeta WHERE meta_key IN ('_seo_settings_by_jordanhost_title', '_seo_settings_by_jordanhost_description', '_seo_settings_by_jordanhost_keywords', '_seo_settings_by_jordanhost_noindex');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_seo_settings_by_jordanhost_title', '_seo_settings_by_jordanhost_description', '_seo_settings_by_jordanhost_keywords', '_seo_settings_by_jordanhost_noindex');

