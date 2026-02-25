#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'MktoPrefill-active'
wp option delete 'MktoPrefill-form-page'
wp option delete 'MktoPrefill-iframe-support'
wp option delete 'MktoPrefill-non-mkto-enabled'
wp option delete 'MktoPrefill-api-key'
wp option delete 'MktoPrefill-selected-fields'
wp option delete 'MktoPrefill-customer-type'

