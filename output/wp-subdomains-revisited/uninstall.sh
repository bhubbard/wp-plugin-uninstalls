#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rewrite_rules'
wp option delete 'wps_disabled'
wp option delete 'wps_domain'
wp option delete 'wps_subdomainall'
wp option delete 'wps_subpages'
wp option delete 'wps_subauthors'
wp option delete 'wps_themes'
wp option delete 'wps_redirectold'
wp option delete 'wps_redirectcanonical'
wp option delete 'wps_keeppagesub'
wp option delete 'wps_subisindex'
wp option delete 'wps_arcfilter'
wp option delete 'wps_pagefilter'
wp option delete 'wps_version'
wp option delete 'csd_version'
wp option delete 'csd_sub_pages'
wp option delete 'sr_sub_pages'
wp option delete 'csd_themes_on'
wp option delete 'sr_themes_on'
wp option delete 'csd_catarchives_on'
wp option delete 'sr_catarchives_on'
wp option delete 'csd_pagefilter_on'
wp option delete 'sr_pagefilter_on'
wp option delete 'wps_sub_pages'
wp option delete 'wps_catarchives'
wp option delete 'csd_subdomainall_on'
wp option delete 'csd_widget_categories'
wp option delete 'csd_widget_sitelist'

# Delete Transients
wp transient delete 'rewrite_rules'

