#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'freenauta_enable_turnstile'
wp option delete 'freenauta_turnstile_site_key'
wp option delete 'freenauta_turnstile_secret_key'

