#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'icgpt_enable'
wp option delete 'icgpt_merchant_id'
wp option delete 'icgpt_webhook_secret'
wp option delete 'icgpt_test_mode'
wp option delete 'icgpt_default_enable_checkout'

