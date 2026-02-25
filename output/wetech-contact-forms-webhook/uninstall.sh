#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'elementor_webhook_token'
wp option delete 'gravity_webhook_token'
wp option delete 'gravity_mapping_array'

