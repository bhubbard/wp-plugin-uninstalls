#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sespress_enable_emails'
wp option delete 'sespress_aws_access_key_id'
wp option delete 'sespress_aws_secret_access_key'
wp option delete 'sespress_region'
wp option delete 'sespress_default_sender'
wp option delete 'sespress_test_mode'
wp option delete 'sespress_test_mode_recipient_name'
wp option delete 'sespress_test_mode_recipient_email'

