#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'addsearch_settings'
wp option delete 'addsearch_redirect'
wp option delete 'addSearchCustomerKey'
wp option delete 'addsearch_prexisting'
wp option delete 'addsearch_currentversion'

