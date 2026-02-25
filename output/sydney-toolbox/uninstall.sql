-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sydney-fontawesome-v5', 'sydney_ele_projects_rewrite_slug', 'sydney_ele_project_cats_rewrite_slug', 'st_flushed_permalinks', 'sydney_toolbox_enable_portfolio');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', 'wpcf-client-link', 'wpcf-position', 'wpcf-facebook', 'wpcf-twitter', 'wpcf-google-plus', 'wpcf-custom-link', 'wpcf-project-link', 'wpcf-service-icon', 'wpcf-service-link', 'wpcf-single-background-image', 'wpcf-single-background-color', 'wpcf-single-hide-title', 'wpcf-single-content-opacity', 'wpcf-client-function', 'wpcf-event-date', 'wpcf-event-icon', 'wpcf-event-icon-color', 'wpcf-event-url');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', 'wpcf-client-link', 'wpcf-position', 'wpcf-facebook', 'wpcf-twitter', 'wpcf-google-plus', 'wpcf-custom-link', 'wpcf-project-link', 'wpcf-service-icon', 'wpcf-service-link', 'wpcf-single-background-image', 'wpcf-single-background-color', 'wpcf-single-hide-title', 'wpcf-single-content-opacity', 'wpcf-client-function', 'wpcf-event-date', 'wpcf-event-icon', 'wpcf-event-icon-color', 'wpcf-event-url');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', 'wpcf-client-link', 'wpcf-position', 'wpcf-facebook', 'wpcf-twitter', 'wpcf-google-plus', 'wpcf-custom-link', 'wpcf-project-link', 'wpcf-service-icon', 'wpcf-service-link', 'wpcf-single-background-image', 'wpcf-single-background-color', 'wpcf-single-hide-title', 'wpcf-single-content-opacity', 'wpcf-client-function', 'wpcf-event-date', 'wpcf-event-icon', 'wpcf-event-icon-color', 'wpcf-event-url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', 'wpcf-client-link', 'wpcf-position', 'wpcf-facebook', 'wpcf-twitter', 'wpcf-google-plus', 'wpcf-custom-link', 'wpcf-project-link', 'wpcf-service-icon', 'wpcf-service-link', 'wpcf-single-background-image', 'wpcf-single-background-color', 'wpcf-single-hide-title', 'wpcf-single-content-opacity', 'wpcf-client-function', 'wpcf-event-date', 'wpcf-event-icon', 'wpcf-event-icon-color', 'wpcf-event-url');

