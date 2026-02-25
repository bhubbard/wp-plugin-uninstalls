#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pdfsmvif_default_zoom'
wp option delete 'pdfsmvif_enable_download'
wp option delete 'pdfsmvif_enable_fullscreen'
wp option delete 'pdfsmvif_enable_print'
wp option delete 'pdfsmvif_enable_zoom_controls'
wp option delete 'pdfsmvif_enable_page_info'
wp option delete 'pdfsmvif_default_height'
wp option delete 'pdfsmvif_enable_remote_pdfs'

# Delete Transients
wp transient delete 'pdfsmvif_version_check'

# Clear Cron Jobs
wp cron event delete 'epsv_cleanup_task'

