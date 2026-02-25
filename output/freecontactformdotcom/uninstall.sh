#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'freecontactformdotcom_email'
wp option delete 'freecontactformdotcom_question'
wp option delete 'freecontactformdotcom_answer'
wp option delete 'freecontactformdotcom_thankyou'
wp option delete 'freecontactformdotcom_linkback'

