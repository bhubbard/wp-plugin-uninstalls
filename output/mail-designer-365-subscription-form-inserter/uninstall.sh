#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'maildesigner365-subscription-form-api-key'
wp option delete 'maildesigner365-subscription-form-api-secret'
wp option delete 'maildesigner365-subscription-form-forms'
wp option delete 'maildesigner365-subscription-form-form'

