#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'awss_version'
wp option delete 'awss_actions'
wp option delete 'awss_defaultterms'
wp option delete 'awss_subscribe'
wp option delete 'awss_registration_greeting'
wp option delete 'awss_formid'
wp option delete 'awss_unit'
wp option delete 'awss_adtracking'
wp option delete 'awss_alreadysubscribed'
wp option delete 'awss_showterms'

