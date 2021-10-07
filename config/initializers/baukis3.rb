Rails.application.configure do
  config.baukis3 = {
    staff: { host: "baukis3.example.com", path: "" },
    admin: { host: "baukis3.example.com", path: "admin" },
    customer: { host: "example.com", path: "mypage" }
  }
end