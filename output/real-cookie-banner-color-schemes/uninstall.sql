-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rcbcs-primary-color', 'rcb-banner-body-design-btn-accept-all-bg', 'rcbcs-primary-color-hover', 'rcb-banner-body-design-btn-accept-all-hover-bg', 'rcbcs-secondary-like-primary', 'rcb-banner-body-design-btn-accept-essentials-use-accept-all', 'rcbcs-save-like-primary', 'rcb-save-button-use-accept-all', 'rcbcs-secondary-color', 'rcb-banner-body-design-btn-accept-essentials-bg', 'rcbcs-secondary-color-hover', 'rcb-banner-body-design-btn-accept-essentials-hover-bg', 'rcbcs-background-color', 'rcb-banner-design-bg', 'rcbcs-primary-font-color', 'rcb-banner-design-font-color', 'rcbcs-secondary-font-color', 'rcb-banner-body-design-teachings-font-color', 'rcbcs-link-color', 'rcb-group-link-color', 'rcbcs-link-color-hover', 'rcb-group-link-hover-color', 'rcbcs_plugin_activation');

