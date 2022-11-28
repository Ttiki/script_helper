form_main = false
form = false

function init(mainForm)
  form_main = mainForm

  count = 0

  form = forms:form()
  form.text = 'Location transition'
  form.width = 500
  form.height = 300

  label = forms:label()
  label.left = 6
  label.top = 6
  label.text = 'Click the button'
  label:addtoform(form)

  local button = forms:button()
  button.left = 6
  button.top = 60
  button.text = 'Click me'
  button:addhandler('click', function(sender, e)
    count = count + 1
    label.text = 'You clicked the button ' .. count .. ' times'
  end)
  button:addtoform(form)

  forms:theme(form)

end

addon:AddHook('init', init)
addon:AddHook('addonsmenu', function()
  form:show()
end)