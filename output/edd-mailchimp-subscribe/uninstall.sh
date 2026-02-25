#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'edd_settings'
wp option delete 'eddms_force_refresh'

# Delete Transients
wp transient delete 'eddms_mailchimp_mailinglist'
wp transient delete 'eddms_mailchimp_stats'

