#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dynqr_btn_btn_bgcolor'
wp option delete 'dynqr_btn_qr_size'
wp option delete 'dynqr_btn_qr_color'
wp option delete 'dynqr_btn_alt'
wp option delete 'dynqr_btn_title'
wp option delete 'dynqr_emb_size'
wp option delete 'dynqr_emb_bgcolor'
wp option delete 'dynqr_emb_color'
wp option delete 'dynqr_emb_alt'
wp option delete 'dynqr_emb_title'
wp option delete 'dynqr_emb_type'
wp option delete 'dynqr_emb_icon_url'
wp option delete 'dynqr_btn_download'
wp option delete 'dynqr_admin_btn_download'
wp option delete 'dynqr_emb_btn_download'
wp option delete 'dynqr_admin_emb_btn_download'
wp option delete 'dynqr_display'

# Delete Transients
wp transient delete 'dynqr_success'
wp transient delete 'dynqr_errors'

