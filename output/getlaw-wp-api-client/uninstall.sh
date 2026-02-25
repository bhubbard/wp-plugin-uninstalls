#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'getlaw_text_cache'
wp option delete 'getlaw_fetch_text_manually'
wp option delete 'getlaw_imprint_key'
wp option delete 'getlaw_privacy_key'
wp option delete 'getlaw_terms_key'
wp option delete 'getlaw_cancellation_policy_key'
wp option delete 'getlaw_accessibility_statement_key'
wp option delete 'getlaw_imprint_manual_update'
wp option delete 'getlaw_privacy_manual_update'
wp option delete 'getlaw_terms_manual_update'
wp option delete 'getlaw_cancellation_policy_manual_update'
wp option delete 'getlaw_accessibility_statement_manual_update'

