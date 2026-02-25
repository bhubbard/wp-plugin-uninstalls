#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'icdb_table_shortcode'
wp option delete 'icdb_column_property'
wp option delete 'icdb_header_style'
wp option delete 'icdb_content_length'
wp option delete 'icdb_excerpt_length'
wp option delete 'icdb_table_seq'

