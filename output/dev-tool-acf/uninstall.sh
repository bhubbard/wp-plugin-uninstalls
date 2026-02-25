#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'acf_visibility_option'
wp option delete 'acf_allowed_emails'
wp option delete 'acf_allowed_roles'
wp option delete 'devtoolacf_visibility_option'
wp option delete 'devtoolacf_allowed_emails'
wp option delete 'devtoolacf_allowed_roles'

