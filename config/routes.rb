Rails.application.routes.draw do
  namespece :staff do
    root "top#index"
  end

  namespece :admin do
    root "top#index"
  end

  namespece :customer do
    root "top#index"
  end
end
