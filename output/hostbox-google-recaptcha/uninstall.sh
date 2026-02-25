#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hostbox_recaptcha_site_key'
wp option delete 'hostbox_recaptcha_secret_key'
wp option delete 'hostbox_recaptcha_version'
wp option delete 'hostbox_recaptcha_min_score'
wp option delete 'hostbox_recaptcha_just_activated'

