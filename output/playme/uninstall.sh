#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'PlayMe_recaptcha_sitekey'
wp option delete 'PlayMe_recaptcha_secretkey'

# Delete Transients
wp transient delete 'playme_requests'

