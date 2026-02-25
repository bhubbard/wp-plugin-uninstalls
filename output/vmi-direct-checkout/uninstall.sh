#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dirctcheckoutvmi_buttontext'
wp option delete 'dirctcheckoutvmi_bgcolor'
wp option delete 'dirctcheckoutvmi_textcolor'
wp option delete 'dirctcheckoutvmi_cartHide'
wp option delete 'dirctcheckoutvmi_buybtn'
wp option delete 'my_plugin_do_activation_redirect'

