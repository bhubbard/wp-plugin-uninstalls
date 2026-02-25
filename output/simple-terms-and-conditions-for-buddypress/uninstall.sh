#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tandc_headline'
wp option delete 'tandc_description'
wp option delete 'tandc_checkboxtext'
wp option delete 'tandc_style'
wp option delete 'tandc_error'

