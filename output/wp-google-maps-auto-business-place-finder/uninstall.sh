#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wgabf_view_on_cat'
wp option delete 'wgabf_view_on_tag'
wp option delete 'wgabf_autocomplete_search'
wp option delete 'wgabf_place_type'
wp option delete 'wgabf_lat'
wp option delete 'wgabf_default_title'
wp option delete 'wgabf_lng'
wp option delete 'wgabf_location'
wp option delete 'wgabf_start_html_tag'
wp option delete 'wgabf_end_html_tag'
wp option delete 'wgabf_title'
wp option delete 'wgabf_exclude_from_title'

