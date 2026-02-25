#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smartid_client_id'
wp option delete 'smartid_debug_mode'
wp option delete 'smartid_registration_disabled'
wp option delete 'eideasy_only_identify'
wp option delete 'eideasy_test_mode'
wp option delete 'smartid_secret'
wp option delete 'smartid_redirect_uri'

