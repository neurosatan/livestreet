{**
 * Управление инвайтами
 *}

<small class="note mb-20">
	{lang name='user.settings.invites.note'}
</small>

{hook run='settings_invite_begin'}

<form action="" method="POST" enctype="multipart/form-data">
	{hook run='form_settings_invite_begin'}

	<p>
		{lang name='user.settings.invites.available'}:
		<strong>
			{if $oUserCurrent->isAdministrator()}
				{lang name='user.settings.invites.many'}
			{else}
				{$iCountInviteAvailable}
			{/if}
		</strong><br />

		{lang name='user.settings.invites.used'}: <strong>{$iCountInviteUsed}</strong>
	</p>

    {* E-mail *}
    {include 'components/field/field.text.tpl'
             sName  = 'invite_mail'
             sNote  = {lang name='user.settings.invites.fields.email.note'}
             sLabel = {lang name='user.settings.invites.fields.email.label'}}

	{hook run='form_settings_invite_end'}

    {* Скрытые поля *}
    {include 'components/field/field.hidden.security_key.tpl'}

    {* Кнопки *}
    {include 'components/button/button.tpl' sName='submit_invite' sMods='primary' sText={lang name='user.settings.invites.fields.submit.text'}}
</form>

{hook run='settings_invite_end'}