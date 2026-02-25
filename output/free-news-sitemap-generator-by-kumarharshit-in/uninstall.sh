#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'khnsg_flush_needed'
wp option delete 'khnsg_flush_rewrite_rules'
wp option delete 'khnsg_last_permalink_structure'

