#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpeec-event-id'
wp option delete 'wpeec-event-form-mode'
wp option delete 'wpeec-frame-height'
wp option delete 'wpeec-button-text'

