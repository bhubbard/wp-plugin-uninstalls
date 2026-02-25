#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pushe_webpush_settings'
wp option delete 'pushe_webpush_modal_options'
wp option delete 'pushe_webpush_bell_options'

