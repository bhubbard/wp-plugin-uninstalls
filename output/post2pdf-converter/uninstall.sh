#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'post2pdf_conv_setting_opt'
wp option delete 'post2pdf_conv_exc'
wp option delete 'post2pdf_conv_sig'
wp option delete 'post2pdf_conv_updated'
wp option delete 'post2pdf_conv_checkver_stamp'

