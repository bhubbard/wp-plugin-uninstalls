#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DROP TABLE IF EXISTS wp_wp_socialinfo_table"
