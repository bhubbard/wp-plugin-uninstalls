-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rewrite_rules', 'wps_disabled', 'wps_domain', 'wps_subdomainall', 'wps_subpages', 'wps_subauthors', 'wps_themes', 'wps_redirectold', 'wps_redirectcanonical', 'wps_keeppagesub', 'wps_subisindex', 'wps_arcfilter', 'wps_pagefilter', 'wps_version', 'csd_version', 'csd_sub_pages', 'sr_sub_pages', 'csd_themes_on', 'sr_themes_on', 'csd_catarchives_on', 'sr_catarchives_on', 'csd_pagefilter_on', 'sr_pagefilter_on', 'wps_sub_pages', 'wps_catarchives', 'csd_subdomainall_on', 'csd_widget_categories', 'csd_widget_sitelist', 'rewrite_rules');

