#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'modern_footnotes_settings'
wp option delete 'modern_footnotes_include_footnote_list_at_end_of_rss_content_default_value_has_been_set'
wp option delete 'modern_footnotes_use_expandable_footnotes_on_desktop_instead_of_tooltips_has_been_migrated'

