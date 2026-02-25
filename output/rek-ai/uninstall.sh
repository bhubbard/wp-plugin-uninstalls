#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rekai_is_enabled'
wp option delete 'rekai_embed_code'
wp option delete 'rekai_autocomplete_mode'
wp option delete 'rekai_autocomplete_automatic_selector'
wp option delete 'rekai_autocomplete_usecurrentlang'
wp option delete 'rekai_autocomplete_nrofhits'
wp option delete 'rekai_autocomplete_navigate_on_click'
wp option delete 'rekai_test_mode'
wp option delete 'rekai_use_mock_data'
wp option delete 'rekai_project_id'
wp option delete 'rekai_secret_key'
wp option delete 'rekai_consent_mode'

