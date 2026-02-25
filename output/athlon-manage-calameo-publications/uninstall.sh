#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'AthlonManageCalameoPublications_db_version'
wp option delete 'calameo_subscription_ids'
wp option delete 'calameo_credentials'

