#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'html2pdf_api_key'
wp option delete 'html2pdf_format'
wp option delete 'html2pdf_landscape'
wp option delete 'html2pdf_margin_top'
wp option delete 'html2pdf_margin_right'
wp option delete 'html2pdf_margin_bottom'
wp option delete 'html2pdf_margin_left'
wp option delete 'html2pdf_width'
wp option delete 'html2pdf_height'

