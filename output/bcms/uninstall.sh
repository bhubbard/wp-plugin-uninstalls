#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bcms_insert_related'
wp option delete 'bcms_searchsmart'
wp option delete 'bcms_swhl'
wp option delete 'bcms_managefocus_month'
wp option delete 'bcms_managefocus_author'
wp option delete 'widget_postloop'
wp option delete 'widget_responseloop'
wp option delete 'bcms_search_options'
wp option delete 'bsuite_site_privacy'

