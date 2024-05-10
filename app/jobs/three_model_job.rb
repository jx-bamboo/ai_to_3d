class ThreeModelJob < ApplicationJob
  queue_as :default

  # sidekiq_options queue: 'default'

  def perform(*args)
    puts ' .. in to perform ..'
    p args, '...'

    # Do something later

    generated_files = send_request_to_third_party(args)
    save_files_locally(generated_files)
  end

  private

  def send_request_to_third_party(data)
    p ' .. send request to third party .. '
    # 发送请求到第三方服务并获取返回的文件
    p Time.now
    var_rand = rand(5..100)
    p var_rand, 'rrrrrrrrrrrr'
    sleep(var_rand)  # 模拟处理时间
    p Time.now

    # 在这里可以根据实际情况发送请求到第三方服务来获取文件
    # 假设直接返回文件名和路径
    {
      a: 'a.ltc',
      b: 'b.obg',
      c: 'c.png'
    }
  end

  def save_files_locally(files)
    p ' save files locally '
    # 将返回的文件保存到本地或者数据库
  end
end
