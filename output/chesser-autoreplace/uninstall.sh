#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'chesser_autoreplace_active'
wp option delete 'chesser_autoreplace_rules'
wp option delete 'chesser_autoreplace_use_mb'

