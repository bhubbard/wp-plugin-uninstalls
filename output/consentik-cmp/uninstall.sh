#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'consentik_site_id'
wp option delete 'consentik_instance_id'
wp option delete 'consentik_enable_gcm'

