require 'barby'
require 'barby/barcode/code_128'
require 'barby/outputter/ascii_outputter'


def barcode
  code = Barby::Code128B.new(self.tracking_number)
end
