#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woo_autocomplete_placeholder'
wp option delete 'woo_submit_placeholder'
wp option delete 'autocomplete_categories'
wp option delete 'autocomplete_tags'
wp option delete 'autocomplete_taxonomies'
wp option delete 'woo_custom_taxonomy'
wp option delete 'include_autocomplete_categories'
wp option delete 'exclude_autocomplete_categories'
wp option delete 'include_autocomplete_tags'
wp option delete 'exclude_autocomplete_tags'
wp option delete 'include_autocomplete_taxonomies'
wp option delete 'exclude_autocomplete_taxonomies'

