#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'convert_to_pdf_paper_size'
wp option delete 'convert_to_pdf_orientation'
wp option delete 'convert_to_pdf_enable'
wp option delete 'convert_to_pdf_position'
wp option delete 'convert_to_pdf_include_image'
wp option delete 'convert_to_pdf_custom_css'
wp option delete 'convert_to_pdf_button_css'
wp option delete 'convert_to_pdf_button_label'

