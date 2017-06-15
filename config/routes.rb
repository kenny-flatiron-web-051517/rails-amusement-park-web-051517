Rails.application.routes.draw do


  get 'session/new'

  get 'session/create'

  get 'session/destroy'

  get 'attraction/index'

  get 'attraction/new'

  get 'attraction/create'

  get 'attraction/edit'

  get 'attraction/update'

  get 'attraction/show'

  get 'attraction/destroy'

  get 'user/new'

  get 'user/create'

  get 'user/edit'

  get 'user/update'

  get 'user/show'

  get 'user/destroy'

  get 'user/login'

  get 'user/verify_login'

end