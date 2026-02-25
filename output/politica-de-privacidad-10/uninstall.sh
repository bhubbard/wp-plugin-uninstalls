#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'privacy_policy_sitename'
wp option delete 'privacy_policy_before_heading'
wp option delete 'privacy_policy_after_heading'
wp option delete 'privacy_policy_before_paragraph'
wp option delete 'privacy_policy_after_paragraph'
wp option delete 'privacy_policy_contact'
wp option delete 'privacy_policy_title'
wp option delete 'privacy_policy_slug'
wp option delete 'privacy_policy_pp_help'
wp option delete 'privacy_policy_browser_help'
wp option delete 'privacy_policy_credit'

