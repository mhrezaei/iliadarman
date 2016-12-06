@include('templates.modal.start' , [
	'partial' => true ,
	'form_url' => url('manage/posts/save/soft_delete'),
	'modal_title' => trans('forms.button.soft_delete'),
])
<div class='modal-body'>

	@include('forms.hiddens' , ['fields' => [
		['id' , $model->id ],
	]])


	@include('forms.input' , [
		'name' => '',
		'label' => trans('validation.attributes.title'),
		'value' => $model->say('title') ,
		'extra' => 'disabled' ,
	])

	@include('forms.group-start')

		@include('forms.button' , [
			'label' => trans('people.commands.soft_delete'),
			'shape' => 'warning',
			'type' => 'submit' ,
		])
		@include('forms.button' , [
			'label' => trans('forms.button.cancel'),
			'shape' => 'link',
			'link' => '$(".modal").modal("hide")',
		])

	@include('forms.group-end')

	@include('forms.feed')

</div>
@include('templates.modal.end')