#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'beautiful_taxonomy_filters_version'
wp option delete 'beautiful_taxonomy_filters_post_types'
wp option delete 'polylang'
wp option delete 'beautiful_taxonomy_filters_taxonomies'
wp option delete 'beautiful_taxonomy_filters_automagic'
wp option delete 'beautiful_taxonomy_filters_styles'
wp option delete 'beautiful_taxonomy_filters_custom_css'
wp option delete 'beautiful_taxonomy_filters_disable_select2'
wp option delete 'beautiful_taxonomy_filters_clear_all'
wp option delete 'beautiful_taxonomy_filters_show_count'
wp option delete 'beautiful_taxonomy_filters_show_description'
wp option delete 'beautiful_taxonomy_filters_hide_empty'
wp option delete 'beautiful_taxonomy_filters_disable_heading'
wp option delete 'beautiful_taxonomy_filters_disable_postcount'
wp option delete 'beautiful_taxonomy_filters_dropdown_behaviour'
wp option delete 'beautiful_taxonomy_filters_settings'
wp option delete 'rewrite_rules'

# Delete Transients
wp transient delete 'btf_notice'

